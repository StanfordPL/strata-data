  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovsd %xmm9, %xmm8, %xmm3                      #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1            #  3     0xa   5      OPC=callq_label         
  vmovddup %ymm3, %ymm4                           #  4     0xf   4      OPC=vmovddup_ymm_ymm    
  movss %xmm1, %xmm4                              #  5     0x13  4      OPC=movss_xmm_xmm       
  vmovq %xmm4, %r15                               #  6     0x17  5      OPC=vmovq_r64_xmm       
  movzwl %r15w, %ebx                              #  7     0x1c  4      OPC=movzwl_r32_r16      
  retq                                            #  8     0x20  1      OPC=retq                
                                                                                                
.size target, .-target
