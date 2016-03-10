  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  pmovzxwd %xmm1, %xmm3                     #  1     0     5      OPC=pmovzxwd_xmm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label          
  vcvttsd2sil %xmm1, %ebx                   #  3     0xa   4      OPC=vcvttsd2sil_r32_xmm  
  xchgl %ebx, %r9d                          #  4     0xe   3      OPC=xchgl_r32_r32        
  retq                                      #  5     0x11  1      OPC=retq                 
                                                                                           
.size target, .-target
