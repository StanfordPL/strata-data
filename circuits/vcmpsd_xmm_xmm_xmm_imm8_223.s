  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label               
  vzeroall                           #  2     0x5   3      OPC=vzeroall                  
  vfnmsub231ss %xmm7, %xmm11, %xmm4  #  3     0x8   5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vpmovsxdq %xmm4, %ymm12            #  4     0xd   5      OPC=vpmovsxdq_ymm_xmm         
  callq .move_064_128_r12_r13_xmm1   #  5     0x12  5      OPC=callq_label               
  vmovshdup %ymm12, %ymm0            #  6     0x17  5      OPC=vmovshdup_ymm_ymm         
  sqrtsd %xmm0, %xmm1                #  7     0x1c  4      OPC=sqrtsd_xmm_xmm            
  retq                               #  8     0x20  1      OPC=retq                      
                                                                                         
.size target, .-target
