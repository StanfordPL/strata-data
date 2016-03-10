  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_pf_into_rbx  #  2     0x3   5      OPC=callq_label   
  addw %bx, %bx            #  3     0x8   3      OPC=addw_r16_r16  
  incb %bl                 #  4     0xb   2      OPC=incb_r8       
  setpo %bl                #  5     0xd   3      OPC=setpo_r8      
  decw %bx                 #  6     0x10  3      OPC=decw_r16      
  xaddb %bh, %bl           #  7     0x13  3      OPC=xaddb_r8_rh   
  retq                     #  8     0x16  1      OPC=retq          
                                                                   
.size target, .-target
