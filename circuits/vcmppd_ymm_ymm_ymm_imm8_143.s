  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vzeroall                           #  1     0     3      OPC=vzeroall                  
  vfnmsub132ss %xmm15, %xmm0, %xmm0  #  2     0x3   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  vaddps %xmm14, %xmm11, %xmm11      #  3     0x8   5      OPC=vaddps_xmm_xmm_xmm        
  vpsubq %xmm0, %xmm11, %xmm5        #  4     0xd   4      OPC=vpsubq_xmm_xmm_xmm        
  vmovshdup %xmm5, %xmm11            #  5     0x11  4      OPC=vmovshdup_xmm_xmm         
  vbroadcastsd %xmm11, %ymm1         #  6     0x15  5      OPC=vbroadcastsd_ymm_xmm      
  retq                               #  7     0x1a  1      OPC=retq                      
                                                                                         
.size target, .-target
