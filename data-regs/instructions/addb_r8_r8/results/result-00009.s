  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  xaddb %ah, %bl    #  2     0x3  3      OPC=xaddb_r8_rh    
  adcb %ah, %cl     #  3     0x6  2      OPC=adcb_r8_rh     
  movsbl %cl, %ebx  #  4     0x8  3      OPC=movsbl_r32_r8  
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
