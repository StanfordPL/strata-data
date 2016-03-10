  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm5                #  1     0     4      OPC=vmovd_xmm_r32           
  vpunpckhdq %xmm2, %xmm5, %xmm11  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %xmm5, %xmm2, %xmm6    #  3     0x8   4      OPC=vunpcklpd_xmm_xmm_xmm   
  vmovsd %xmm2, %xmm11, %xmm8      #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm      
  vorpd %xmm6, %xmm8, %xmm1        #  5     0x10  4      OPC=vorpd_xmm_xmm_xmm       
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
