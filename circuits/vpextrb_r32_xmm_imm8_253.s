  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  popcntl %r8d, %ecx                        #  2     0x5   5      OPC=popcntl_r32_r32  
  xchgw %r9w, %ax                           #  3     0xa   3      OPC=xchgw_ax_r16     
  callq .read_cf_into_rbx                   #  4     0xd   5      OPC=callq_label      
  addb %ah, %bl                             #  5     0x12  2      OPC=addb_r8_rh       
  retq                                      #  6     0x14  1      OPC=retq             
                                                                                       
.size target, .-target
