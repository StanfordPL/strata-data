  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vcvttsd2sil %xmm9, %r13d                        #  2     0x5   5      OPC=vcvttsd2sil_r32_xmm  
  movzwq %r13w, %r11                              #  3     0xa   4      OPC=movzwq_r64_r16       
  movd %xmm1, %ebx                                #  4     0xe   4      OPC=movd_r32_xmm         
  callq .move_032_016_ebx_r10w_r11w               #  5     0x12  5      OPC=callq_label          
  xchgl %r11d, %ebx                               #  6     0x17  3      OPC=xchgl_r32_r32        
  retq                                            #  7     0x1a  1      OPC=retq                 
                                                                                                 
.size target, .-target
