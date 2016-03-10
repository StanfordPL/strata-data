  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label     
  vzeroall                          #  2     0x5   3      OPC=vzeroall        
  orw %r10w, %r11w                  #  3     0x8   4      OPC=orw_r16_r16     
  xchgq %rbx, %r11                  #  4     0xc   3      OPC=xchgq_r64_r64   
  callq .move_064_128_r10_r11_xmm3  #  5     0xf   5      OPC=callq_label     
  movdqa %xmm3, %xmm1               #  6     0x14  4      OPC=movdqa_xmm_xmm  
  retq                              #  7     0x18  1      OPC=retq            
                                                                              
.size target, .-target
