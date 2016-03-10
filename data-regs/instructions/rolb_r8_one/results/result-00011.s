  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %r10  #  1     0    4      OPC=movsbq_r64_r8  
  rolw $0x1, %r10w  #  2     0x4  4      OPC=rolw_r16_one   
  adcb %bl, %bl     #  3     0x8  2      OPC=adcb_r8_r8     
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
