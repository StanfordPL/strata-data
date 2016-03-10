  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  vmovd %ecx, %xmm2               #  1     0     4      OPC=vmovd_xmm_r32    
  movlhps %xmm2, %xmm2            #  2     0x4   3      OPC=movlhps_xmm_xmm  
  callq .read_pf_into_rcx         #  3     0x7   5      OPC=callq_label      
  callq .move_128_064_xmm2_r8_r9  #  4     0xc   5      OPC=callq_label      
  negb %cl                        #  5     0x11  2      OPC=negb_r8          
  cmovel %r9d, %ebx               #  6     0x13  4      OPC=cmovel_r32_r32   
  retq                            #  7     0x17  1      OPC=retq             
                                                                             
.size target, .-target
