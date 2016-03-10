  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  vzeroall                                      #  1     0     3      OPC=vzeroall        
  movswl %bx, %r9d                              #  2     0x3   4      OPC=movswl_r32_r16  
  xchgl %r9d, %ebx                              #  3     0x7   3      OPC=xchgl_r32_r32   
  vmovq %r9, %xmm4                              #  4     0xa   5      OPC=vmovq_xmm_r64   
  callq .move_byte_27_of_ymm1_to_r9b            #  5     0xf   5      OPC=callq_label     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x14  5      OPC=callq_label     
  callq .move_r9b_to_byte_25_of_ymm1            #  7     0x19  5      OPC=callq_label     
  retq                                          #  8     0x1e  1      OPC=retq            
                                                                                          
.size target, .-target
