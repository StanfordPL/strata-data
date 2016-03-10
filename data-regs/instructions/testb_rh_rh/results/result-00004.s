  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bh, %ebx  #  1     0    3      OPC=movzbl_r32_rh  
  orb %bh, %bl      #  2     0x3  2      OPC=orb_r8_rh      
  adcb %bh, %bl     #  3     0x5  2      OPC=adcb_r8_rh     
  testb %bl, %ah    #  4     0x7  2      OPC=testb_rh_r8    
  retq              #  5     0x9  1      OPC=retq           
                                                            
.size target, .-target
