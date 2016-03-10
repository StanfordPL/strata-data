  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovd %xmm11, %r8d                              #  2     0x5   5      OPC=vmovd_r32_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1               #  3     0xa   5      OPC=callq_label      
  vmovq %xmm1, %rbx                               #  4     0xf   5      OPC=vmovq_r64_xmm    
  orq %r8, %r8                                    #  5     0x14  3      OPC=orq_r64_r64      
  callq .set_sf                                   #  6     0x17  5      OPC=callq_label      
  cmovlel %r8d, %ebx                              #  7     0x1c  4      OPC=cmovlel_r32_r32  
  retq                                            #  8     0x20  1      OPC=retq             
                                                                                             
.size target, .-target
