  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovd %xmm1, %ecx  #  1     0    4      OPC=vmovd_r32_xmm  
  xorq %rbx, %rbx    #  2     0x4  3      OPC=xorq_r64_r64   
  bswap %ecx         #  3     0x7  2      OPC=bswap_r32      
  sbbb %bl, %ch      #  4     0x9  2      OPC=sbbb_rh_r8     
  movb %ch, %bl      #  5     0xb  2      OPC=movb_r8_rh     
  adcb %cl, %bh      #  6     0xd  2      OPC=adcb_rh_r8     
  retq               #  7     0xf  1      OPC=retq           
                                                             
.size target, .-target
