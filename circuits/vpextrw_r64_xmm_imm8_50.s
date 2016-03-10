  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  andb %r9b, %r8b                           #  2     0x5   3      OPC=andb_r8_r8     
  callq .read_pf_into_rbx                   #  3     0x8   5      OPC=callq_label    
  xchgw %dx, %bx                            #  4     0xd   3      OPC=xchgw_r16_r16  
  retq                                      #  5     0x10  1      OPC=retq           
                                                                                     
.size target, .-target
