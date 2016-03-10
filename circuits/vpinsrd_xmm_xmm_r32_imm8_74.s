  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movd %ebx, %xmm13               #  1     0     5      OPC=movd_xmm_r32           
  vbroadcastss %xmm13, %xmm1      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm2, %xmm1, %xmm14  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmaxss %xmm1, %xmm14, %xmm1     #  4     0xe   4      OPC=vmaxss_xmm_xmm_xmm     
  movsd %xmm2, %xmm1              #  5     0x12  4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
