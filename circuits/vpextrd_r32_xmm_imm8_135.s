  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9         #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm9, %rbx                     #  3     0xa   5      OPC=vmovmskpd_r64_xmm  
  xchgl %r9d, %ebx                          #  4     0xf   3      OPC=xchgl_r32_r32      
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
