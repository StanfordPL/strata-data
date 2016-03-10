  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovaps %xmm9, %xmm3                            #  2     0x5   5      OPC=vmovaps_xmm_xmm  
  vmovd %xmm3, %r12d                              #  3     0xa   5      OPC=vmovd_r32_xmm    
  movd %xmm3, %ebx                                #  4     0xf   4      OPC=movd_r32_xmm     
  orl %r12d, %ebx                                 #  5     0x13  3      OPC=orl_r32_r32      
  retq                                            #  6     0x16  1      OPC=retq             
                                                                                             
.size target, .-target
