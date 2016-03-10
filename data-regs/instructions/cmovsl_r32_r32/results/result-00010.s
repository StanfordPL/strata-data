  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                
.target:                                    #        0    0      OPC=<label>           
  vmovd %ecx, %xmm3                         #  1     0    4      OPC=vmovd_xmm_r32     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label       
  rolb $0x1, %dl                            #  3     0x9  2      OPC=rolb_r8_one       
  cmovngel %ecx, %ebx                       #  4     0xb  3      OPC=cmovngel_r32_r32  
  retq                                      #  5     0xe  1      OPC=retq              
                                                                                       
.size target, .-target
