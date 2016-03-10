  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %bh, %cx  #  1     0    4      OPC=movsbw_r16_rh  
  sarb $0x1, %cl   #  2     0x4  2      OPC=sarb_r8_one    
  adcb %cl, %cl    #  3     0x6  2      OPC=adcb_r8_r8     
  subb %cl, %ah    #  4     0x8  2      OPC=subb_rh_r8     
  retq             #  5     0xa  1      OPC=retq           
                                                           
.size target, .-target
