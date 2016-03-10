  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  movzbl %al, %ebx                          #  2     0x5  3      OPC=movzbl_r32_r8  
  xorb %ah, %bh                             #  3     0x8  2      OPC=xorb_rh_rh     
  retq                                      #  4     0xa  1      OPC=retq           
                                                                                    
.size target, .-target
