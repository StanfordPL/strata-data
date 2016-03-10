  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vxorpd %xmm12, %xmm2, %xmm14         #  2     0x5   5      OPC=vxorpd_xmm_xmm_xmm  
  movapd %xmm12, %xmm6                 #  3     0xa   5      OPC=movapd_xmm_xmm      
  vpandn %xmm14, %xmm13, %xmm7         #  4     0xf   5      OPC=vpandn_xmm_xmm_xmm  
  mulpd %xmm7, %xmm1                   #  5     0x14  4      OPC=mulpd_xmm_xmm       
  vmulsd %xmm14, %xmm6, %xmm0          #  6     0x18  5      OPC=vmulsd_xmm_xmm_xmm  
  addsubpd %xmm12, %xmm1               #  7     0x1d  5      OPC=addsubpd_xmm_xmm    
  movhlps %xmm0, %xmm1                 #  8     0x22  3      OPC=movhlps_xmm_xmm     
  retq                                 #  9     0x25  1      OPC=retq                
                                                                                     
.size target, .-target
