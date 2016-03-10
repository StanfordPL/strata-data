  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  xorb %bh, %bh                                 #  2     0x5   2      OPC=xorb_rh_rh     
  callq .read_cf_into_rbx                       #  3     0x7   5      OPC=callq_label    
  xaddl %ebx, %r13d                             #  4     0xc   4      OPC=xaddl_r32_r32  
  retq                                          #  5     0x10  1      OPC=retq           
                                                                                         
.size target, .-target
