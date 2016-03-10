  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label      
  setae %dh                #  2     0x5   3      OPC=setae_rh         
  popcntq %rcx, %r15       #  3     0x8   5      OPC=popcntq_r64_r64  
  movsbl %dh, %ecx         #  4     0xd   3      OPC=movsbl_r32_rh    
  xaddb %cl, %cl           #  5     0x10  3      OPC=xaddb_r8_r8      
  setz %r10b               #  6     0x13  4      OPC=setz_r8          
  xaddb %r15b, %r10b       #  7     0x17  4      OPC=xaddb_r8_r8      
  callq .read_pf_into_rbx  #  8     0x1b  5      OPC=callq_label      
  negb %bl                 #  9     0x20  2      OPC=negb_r8          
  retq                     #  10    0x22  1      OPC=retq             
                                                                      
.size target, .-target
