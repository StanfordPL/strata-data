  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label    
  decq %rcx                #  2     0x5   3      OPC=decq_r64       
  movsbl %cl, %r10d        #  3     0x8   4      OPC=movsbl_r32_r8  
  orl %r10d, %ecx          #  4     0xc   3      OPC=orl_r32_r32    
  rolw $0x1, %cx           #  5     0xf   3      OPC=rolw_r16_one   
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
