  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovaps %xmm2, %xmm7                 #  1     0     4      OPC=vmovaps_xmm_xmm          
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vmovss %xmm7, %xmm7, %xmm5           #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm       
  vfmsub132ps %xmm7, %xmm12, %xmm2     #  4     0xd   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vunpckhpd %xmm13, %xmm2, %xmm1       #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm    
  movshdup %xmm5, %xmm1                #  6     0x17  4      OPC=movshdup_xmm_xmm         
  movsd %xmm5, %xmm1                   #  7     0x1b  4      OPC=movsd_xmm_xmm            
  retq                                 #  8     0x1f  1      OPC=retq                     
                                                                                          
.size target, .-target
