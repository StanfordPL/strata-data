  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label         
  vmovsd %xmm12, %xmm3, %xmm11          #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm  
  vcvtps2pd %xmm13, %ymm10              #  3     0xa   5      OPC=vcvtps2pd_ymm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label         
  movups %xmm2, %xmm1                   #  5     0x14  3      OPC=movups_xmm_xmm      
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
