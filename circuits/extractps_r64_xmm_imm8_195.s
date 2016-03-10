  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .clear_zf                           #  1     0     5      OPC=callq_label    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label    
  callq .read_zf_into_rbx                   #  3     0xa   5      OPC=callq_label    
  xaddl %r9d, %ebx                          #  4     0xf   4      OPC=xaddl_r32_r32  
  retq                                      #  5     0x13  1      OPC=retq           
                                                                                     
.size target, .-target
