  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  tzcntl %eax, %r15d                        #  2     0x5   5      OPC=tzcntl_r32_r32  
  callq .read_cf_into_rbx                   #  3     0xa   5      OPC=callq_label     
  xorb %r9b, %bl                            #  4     0xf   3      OPC=xorb_r8_r8      
  xaddw %bx, %r9w                           #  5     0x12  5      OPC=xaddw_r16_r16   
  retq                                      #  6     0x17  1      OPC=retq            
                                                                                      
.size target, .-target
