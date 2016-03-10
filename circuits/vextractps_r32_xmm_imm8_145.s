  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  shll $0x1, %r9d                           #  2     0x5   3      OPC=shll_r32_one     
  callq .read_pf_into_rbx                   #  3     0x8   5      OPC=callq_label      
  salb $0x1, %bh                            #  4     0xd   2      OPC=salb_rh_one      
  cmovnbl %edx, %ebx                        #  5     0xf   3      OPC=cmovnbl_r32_r32  
  retq                                      #  6     0x12  1      OPC=retq             
                                                                                       
.size target, .-target
