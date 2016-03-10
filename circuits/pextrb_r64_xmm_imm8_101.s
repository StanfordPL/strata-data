  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode           
.target:                                    #        0    0      OPC=<label>      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label  
  andb %al, %r8b                            #  2     0x5  3      OPC=andb_r8_r8   
  callq .read_zf_into_rbx                   #  3     0x8  5      OPC=callq_label  
  xchgb %bl, %dh                            #  4     0xd  2      OPC=xchgb_rh_r8  
  retq                                      #  5     0xf  1      OPC=retq         
                                                                                  
.size target, .-target
