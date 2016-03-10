  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovq %rbx, %xmm6                         #  1     0     5      OPC=vmovq_xmm_r64       
  vminps %xmm6, %xmm6, %xmm3                #  2     0x5   4      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label         
  cmovngl %ecx, %ebx                        #  4     0xe   3      OPC=cmovngl_r32_r32     
  callq .move_r9b_to_byte_4_of_rbx          #  5     0x11  5      OPC=callq_label         
  retq                                      #  6     0x16  1      OPC=retq                
                                                                                          
.size target, .-target
