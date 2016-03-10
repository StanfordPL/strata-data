  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rcx  #  2     0x5   5      OPC=callq_label    
  movsbq %bl, %r10         #  3     0xa   4      OPC=movsbq_r64_r8  
  callq .read_sf_into_rbx  #  4     0xe   5      OPC=callq_label    
  xorl %r10d, %ebx         #  5     0x13  3      OPC=xorl_r32_r32   
  shll $0x1, %r10d         #  6     0x16  3      OPC=shll_r32_one   
  adcw %bx, %cx            #  7     0x19  3      OPC=adcw_r16_r16   
  setnz %ah                #  8     0x1c  3      OPC=setnz_rh       
  retq                     #  9     0x1f  1      OPC=retq           
                                                                    
.size target, .-target
