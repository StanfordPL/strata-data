  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                    
.target:                                    #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm1              #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label           
  movzbl %ah, %ebx                          #  3     0x9  3      OPC=movzbl_r32_rh         
  retq                                      #  4     0xc  1      OPC=retq                  
                                                                                           
.size target, .-target
