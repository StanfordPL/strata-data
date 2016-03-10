  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorq %rsp, %rsp  #  1     0    3      OPC=xorq_r64_r64   
  incw %sp         #  2     0x3  3      OPC=incw_r16       
  xaddw %sp, %sp   #  3     0x6  4      OPC=xaddw_r16_r16  
  sbbb %bl, %ah    #  4     0xa  2      OPC=sbbb_rh_r8     
  retq             #  5     0xc  1      OPC=retq           
                                                           
.size target, .-target
