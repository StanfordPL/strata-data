  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64  
  andb %bh, %bh                                 #  3     0xf   2      OPC=andb_rh_rh      
  adcl %r13d, %ebx                              #  4     0x11  3      OPC=adcl_r32_r32    
  retq                                          #  5     0x14  1      OPC=retq            
                                                                                          
.size target, .-target
