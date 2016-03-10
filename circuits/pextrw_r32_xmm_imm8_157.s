  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm10          #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxwq %xmm10, %xmm3                   #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label              
  movzwl %r8w, %ebx                         #  4     0xe   4      OPC=movzwl_r32_r16           
  retq                                      #  5     0x12  1      OPC=retq                     
                                                                                               
.size target, .-target
