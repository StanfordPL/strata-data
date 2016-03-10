  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %ymm7            #  1     0     5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label        
  movd %xmm7, %ebx                  #  3     0xa   4      OPC=movd_r32_xmm       
  xchgl %r11d, %ebx                 #  4     0xe   3      OPC=xchgl_r32_r32      
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
