  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rdx           #  2     0x5  5      OPC=callq_label    
  movzbl %dh, %ebx                          #  3     0xa  3      OPC=movzbl_r32_rh  
  retq                                      #  4     0xd  1      OPC=retq           
                                                                                    
.size target, .-target