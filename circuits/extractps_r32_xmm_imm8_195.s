  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovshdup %xmm1, %xmm7                    #  1     0     4      OPC=vmovshdup_xmm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  cvttsd2sil %xmm7, %ebx                    #  3     0x9   4      OPC=cvttsd2sil_r32_xmm  
  xchgl %ebx, %r9d                          #  4     0xd   3      OPC=xchgl_r32_r32       
  retq                                      #  5     0x10  1      OPC=retq                
                                                                                          
.size target, .-target
