  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode            
.target:                 #        0    0      OPC=<label>       
  xorl %eax, %eax        #  1     0    2      OPC=xorl_r32_r32  
  cmpb %ah, %bl          #  2     0x2  2      OPC=cmpb_r8_rh    
  setnge %bh             #  3     0x4  3      OPC=setnge_rh     
  sarw $0x1, %bx         #  4     0x7  3      OPC=sarw_r16_one  
  callq .set_szp_for_bl  #  5     0xa  5      OPC=callq_label   
  retq                   #  6     0xf  1      OPC=retq          
                                                                
.size target, .-target
