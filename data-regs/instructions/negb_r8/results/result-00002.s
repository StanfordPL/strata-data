  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
.target:                 #        0     0      OPC=<label>       
  xorq %rax, %rax        #  1     0     3      OPC=xorq_r64_r64  
  xorb %bl, %al          #  2     0x3   2      OPC=xorb_r8_r8    
  negw %ax               #  3     0x5   3      OPC=negw_r16      
  xaddb %bl, %al         #  4     0x8   3      OPC=xaddb_r8_r8   
  callq .set_szp_for_bl  #  5     0xb   5      OPC=callq_label   
  retq                   #  6     0x10  1      OPC=retq          
                                                                 
.size target, .-target
