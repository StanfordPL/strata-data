  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovaps %xmm5, %xmm7                          #  2     0x5   4      OPC=vmovaps_xmm_xmm          
  punpckhwd %xmm3, %xmm2                        #  3     0x9   4      OPC=punpckhwd_xmm_xmm        
  vcvtpd2dq %ymm7, %xmm1                        #  4     0xd   4      OPC=vcvtpd2dq_xmm_ymm        
  vfmadd231pd %xmm3, %xmm3, %xmm1               #  5     0x11  5      OPC=vfmadd231pd_xmm_xmm_xmm  
  movapd %xmm2, %xmm1                           #  6     0x16  4      OPC=movapd_xmm_xmm           
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
