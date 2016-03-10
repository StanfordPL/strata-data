  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzwq %bx, %rdx       #  1     0     4      OPC=movzwq_r64_r16  
  decw %bx               #  2     0x4   3      OPC=decw_r16        
  notw %bx               #  3     0x7   3      OPC=notw_r16        
  addw %bx, %dx          #  4     0xa   3      OPC=addw_r16_r16    
  callq .set_szp_for_bx  #  5     0xd   5      OPC=callq_label     
  retq                   #  6     0x12  1      OPC=retq            
                                                                   
.size target, .-target
