  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  vmovd %ebx, %xmm3                         #  1     0     4      OPC=vmovd_xmm_r32   
  movupd %xmm3, %xmm1                       #  2     0x4   4      OPC=movupd_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label     
  callq .move_r9b_to_byte_8_of_ymm1         #  4     0xd   5      OPC=callq_label     
  retq                                      #  5     0x12  1      OPC=retq            
                                                                                      
.size target, .-target
