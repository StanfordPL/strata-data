  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  callq .set_of            #  1     0     5      OPC=callq_label        
  movsbl %bl, %r10d        #  2     0x5   4      OPC=movsbl_r32_r8      
  callq .read_of_into_rcx  #  3     0x9   5      OPC=callq_label        
  xchgb %cl, %ah           #  4     0xe   2      OPC=xchgb_rh_r8        
  andnl %r10d, %ecx, %ebp  #  5     0x10  5      OPC=andnl_r32_r32_r32  
  notw %bp                 #  6     0x15  3      OPC=notw_r16           
  testb %r10b, %bpl        #  7     0x18  3      OPC=testb_r8_r8        
  retq                     #  8     0x1b  1      OPC=retq               
                                                                        
.size target, .-target
