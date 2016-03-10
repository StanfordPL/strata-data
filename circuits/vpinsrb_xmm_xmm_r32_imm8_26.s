  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movdqa %xmm2, %xmm12                      #  2     0x5   5      OPC=movdqa_xmm_xmm  
  vmovd %ebx, %xmm1                         #  3     0xa   4      OPC=vmovd_xmm_r32   
  xchgl %ebx, %r9d                          #  4     0xe   3      OPC=xchgl_r32_r32   
  movaps %xmm12, %xmm1                      #  5     0x11  4      OPC=movaps_xmm_xmm  
  callq .move_r9b_to_byte_10_of_ymm1        #  6     0x15  5      OPC=callq_label     
  retq                                      #  7     0x1a  1      OPC=retq            
                                                                                      
.size target, .-target
