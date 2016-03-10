  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x10, %rdx                          #  1     0     10     OPC=movq_r64_imm64  
  seta %dh                                  #  2     0xa   3      OPC=seta_rh         
  vmovd %edx, %xmm2                         #  3     0xd   4      OPC=vmovd_xmm_r32   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0x11  5      OPC=callq_label     
  retq                                      #  5     0x16  1      OPC=retq            
                                                                                      
.size target, .-target
