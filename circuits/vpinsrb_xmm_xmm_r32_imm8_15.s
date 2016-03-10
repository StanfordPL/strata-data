  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  vmovdqu %xmm2, %xmm1                      #  2     0x5   4      OPC=vmovdqu_xmm_xmm  
  xchgl %r9d, %ebx                          #  3     0x9   3      OPC=xchgl_r32_r32    
  callq .move_r9b_to_byte_15_of_ymm1        #  4     0xc   5      OPC=callq_label      
  retq                                      #  5     0x11  1      OPC=retq             
                                                                                       
.size target, .-target
