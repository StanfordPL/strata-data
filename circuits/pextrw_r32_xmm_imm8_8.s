  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  shlb $0x1, %r8b                           #  2     0x5   3      OPC=shlb_r8_one      
  popcntl %r8d, %ebx                        #  3     0x8   5      OPC=popcntl_r32_r32  
  callq .read_pf_into_rbx                   #  4     0xd   5      OPC=callq_label      
  addw %ax, %bx                             #  5     0x12  3      OPC=addw_r16_r16     
  retq                                      #  6     0x15  1      OPC=retq             
                                                                                       
.size target, .-target
