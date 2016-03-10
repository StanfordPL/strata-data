  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %xmm2, %xmm2, %xmm10  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovss %xmm10, %xmm1, %xmm11    #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm     
  minps %xmm11, %xmm1             #  3     0x9  4      OPC=minps_xmm_xmm          
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
