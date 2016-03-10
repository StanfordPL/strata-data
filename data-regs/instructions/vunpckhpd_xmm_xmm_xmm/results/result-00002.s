  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  vmovsd %xmm11, %xmm3, %xmm8          #  2     0x5  5      OPC=vmovsd_xmm_xmm_xmm  
  vpand %xmm8, %xmm8, %xmm1            #  3     0xa  5      OPC=vpand_xmm_xmm_xmm   
  retq                                 #  4     0xf  1      OPC=retq                
                                                                                    
.size target, .-target
