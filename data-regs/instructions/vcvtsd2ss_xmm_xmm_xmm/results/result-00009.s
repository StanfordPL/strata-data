  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  cvtsd2ss %xmm3, %xmm2                #  1     0     4      OPC=cvtsd2ss_xmm_xmm          
  vmovupd %xmm3, %xmm1                 #  2     0x4   4      OPC=vmovupd_xmm_xmm           
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label               
  vfnmadd132pd %ymm1, %ymm1, %ymm1     #  4     0xd   5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label               
  retq                                 #  6     0x17  1      OPC=retq                      
                                                                                           
.size target, .-target
