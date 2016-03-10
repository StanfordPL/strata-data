  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  testb %ah, %ah           #  1     0     2      OPC=testb_rh_rh     
  movsbw %ah, %dx          #  2     0x2   4      OPC=movsbw_r16_rh   
  callq .read_of_into_rbx  #  3     0x6   5      OPC=callq_label     
  sarw $0x1, %dx           #  4     0xb   3      OPC=sarw_r16_one    
  movzwq %bx, %rax         #  5     0xe   4      OPC=movzwq_r64_r16  
  xchgb %ah, %dl           #  6     0x12  2      OPC=xchgb_r8_rh     
  retq                     #  7     0x14  1      OPC=retq            
                                                                     
.size target, .-target
