  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vmovq %xmm9, %rbx                               #  3     0xa   5      OPC=vmovq_r64_xmm           
  vzeroall                                        #  4     0xf   3      OPC=vzeroall                
  vcvtsi2sdl %ebx, %xmm6, %xmm11                  #  5     0x12  4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  movddup %xmm11, %xmm4                           #  6     0x16  5      OPC=movddup_xmm_xmm         
  vcvtsi2sdl %r8d, %xmm4, %xmm1                   #  7     0x1b  5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
