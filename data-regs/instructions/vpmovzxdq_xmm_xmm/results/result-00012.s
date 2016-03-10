  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  shll $0x1, %r8d                           #  2     0x5   3      OPC=shll_r32_one   
  xchgl %r8d, %eax                          #  3     0x8   3      OPC=xchgl_r32_r32  
  movl %edx, %r9d                           #  4     0xb   3      OPC=movl_r32_r32   
  vzeroall                                  #  5     0xe   3      OPC=vzeroall       
  callq .move_128_256_xmm10_xmm11_ymm1      #  6     0x11  5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm1            #  7     0x16  5      OPC=callq_label    
  retq                                      #  8     0x1b  1      OPC=retq           
                                                                                     
.size target, .-target
