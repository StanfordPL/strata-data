  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  vzeroall                                  #  1     0     3      OPC=vzeroall       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label    
  xchgl %ebx, %r9d                          #  3     0x8   3      OPC=xchgl_r32_r32  
  vmovq %r9, %xmm10                         #  4     0xb   5      OPC=vmovq_xmm_r64  
  callq .move_128_256_xmm10_xmm11_ymm1      #  5     0x10  5      OPC=callq_label    
  retq                                      #  6     0x15  1      OPC=retq           
                                                                                     
.size target, .-target
