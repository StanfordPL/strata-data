  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  movslq %eax, %rdx                         #  1     0    3      OPC=movslq_r64_r32  
  vmovq %rdx, %xmm1                         #  2     0x3  5      OPC=vmovq_xmm_r64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8  5      OPC=callq_label     
  retq                                      #  4     0xd  1      OPC=retq            
                                                                                     
.size target, .-target
