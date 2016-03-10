  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movb %bh, %bh       #  1     0    2      OPC=movb_rh_rh     
  vmovd %ebx, %xmm3   #  2     0x2  4      OPC=vmovd_xmm_r32  
  movss %xmm3, %xmm1  #  3     0x6  4      OPC=movss_xmm_xmm  
  retq                #  4     0xa  1      OPC=retq           
                                                              
.size target, .-target
